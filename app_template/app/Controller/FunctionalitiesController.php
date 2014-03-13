<?php
App::uses('AppController', 'Controller');
/**
 * Functionalities Controller
 *
 * @property Functionality $Functionality
 * @property PaginatorComponent $Paginator
 * @property SessionComponent $Session
 */
class FunctionalitiesController extends AppController {

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
		$this->Functionality->recursive = 0;
		$this->set('functionalities', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Functionality->exists($id)) {
			throw new NotFoundException(__('Invalid functionality'));
		}
		$options = array('conditions' => array('Functionality.' . $this->Functionality->primaryKey => $id));
		$this->set('functionality', $this->Functionality->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Functionality->create();
			if ($this->Functionality->save($this->request->data)) {
				$this->Session->setFlash(__('The functionality has been saved'), 'flash/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The functionality could not be saved. Please, try again.'), 'flash/error');
			}
		}
		$functionalityTypes = $this->Functionality->FunctionalityType->find('list');
		$roles = $this->Functionality->Role->find('list');
		$this->set(compact('functionalityTypes', 'roles'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
        $this->Functionality->id = $id;
		if (!$this->Functionality->exists($id)) {
			throw new NotFoundException(__('Invalid functionality'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Functionality->save($this->request->data)) {
				$this->Session->setFlash(__('The functionality has been saved'), 'flash/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The functionality could not be saved. Please, try again.'), 'flash/error');
			}
		} else {
			$options = array('conditions' => array('Functionality.' . $this->Functionality->primaryKey => $id));
			$this->request->data = $this->Functionality->find('first', $options);
		}
		$functionalityTypes = $this->Functionality->FunctionalityType->find('list');
		$roles = $this->Functionality->Role->find('list');
		$this->set(compact('functionalityTypes', 'roles'));
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
		$this->Functionality->id = $id;
		if (!$this->Functionality->exists()) {
			throw new NotFoundException(__('Invalid functionality'));
		}
		if ($this->Functionality->delete()) {
			$this->Session->setFlash(__('Functionality deleted'), 'flash/success');
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Functionality was not deleted'), 'flash/error');
		$this->redirect(array('action' => 'index'));
	}}
