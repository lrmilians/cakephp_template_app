<?php
App::uses('AppController', 'Controller');
/**
 * FunctionalityTypes Controller
 *
 * @property FunctionalityType $FunctionalityType
 * @property PaginatorComponent $Paginator
 * @property SessionComponent $Session
 */
class FunctionalityTypesController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator', 'Session');

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->FunctionalityType->recursive = 0;
		$this->set('functionalityTypes', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->FunctionalityType->exists($id)) {
			throw new NotFoundException(__('Invalid functionality type'));
		}
		$options = array('conditions' => array('FunctionalityType.' . $this->FunctionalityType->primaryKey => $id));
		$this->set('functionalityType', $this->FunctionalityType->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->FunctionalityType->create();
			if ($this->FunctionalityType->save($this->request->data)) {
				$this->Session->setFlash(__('The functionality type has been saved'), 'flash/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The functionality type could not be saved. Please, try again.'), 'flash/error');
			}
		}
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
        $this->FunctionalityType->id = $id;
		if (!$this->FunctionalityType->exists($id)) {
			throw new NotFoundException(__('Invalid functionality type'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->FunctionalityType->save($this->request->data)) {
				$this->Session->setFlash(__('The functionality type has been saved'), 'flash/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The functionality type could not be saved. Please, try again.'), 'flash/error');
			}
		} else {
			$options = array('conditions' => array('FunctionalityType.' . $this->FunctionalityType->primaryKey => $id));
			$this->request->data = $this->FunctionalityType->find('first', $options);
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @throws MethodNotAllowedException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		if (!$this->request->is('post')) {
			throw new MethodNotAllowedException();
		}
		$this->FunctionalityType->id = $id;
		if (!$this->FunctionalityType->exists()) {
			throw new NotFoundException(__('Invalid functionality type'));
		}
		if ($this->FunctionalityType->delete()) {
			$this->Session->setFlash(__('Functionality type deleted'), 'flash/success');
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Functionality type was not deleted'), 'flash/error');
		$this->redirect(array('action' => 'index'));
	}}
