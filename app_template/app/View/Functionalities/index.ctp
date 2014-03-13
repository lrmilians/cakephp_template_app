
<div id="page-container" class="row">

	<div id="sidebar" class="col-sm-3">
		
		<div class="actions">
		
			<ul class="list-group">
				<li class="list-group-item"><?php echo $this->Html->link(__('New Functionality'), array('action' => 'add'), array('class' => '')); ?></li>
				<li class="list-group-item"><?php echo $this->Html->link(__('List Functionality Types'), array('controller' => 'functionality_types', 'action' => 'index'), array('class' => '')); ?></li> 
				<li class="list-group-item"><?php echo $this->Html->link(__('New Functionality Type'), array('controller' => 'functionality_types', 'action' => 'add'), array('class' => '')); ?></li> 
				<li class="list-group-item"><?php echo $this->Html->link(__('List Roles'), array('controller' => 'roles', 'action' => 'index'), array('class' => '')); ?></li> 
				<li class="list-group-item"><?php echo $this->Html->link(__('New Role'), array('controller' => 'roles', 'action' => 'add'), array('class' => '')); ?></li> 
			</ul><!-- /.list-group -->
			
		</div><!-- /.actions -->
		
	</div><!-- /#sidebar .col-sm-3 -->
	
	<div id="page-content" class="col-sm-9">

		<div class="functionalities index">
		
			<h2><?php echo __('Functionalities'); ?></h2>
			
			<div class="table-responsive">
				<table cellpadding="0" cellspacing="0" class="table table-striped table-bordered">
					<thead>
						<tr>
							<th><?php echo $this->Paginator->sort('id'); ?></th>
							<th><?php echo $this->Paginator->sort('name'); ?></th>
							<th><?php echo $this->Paginator->sort('active'); ?></th>
							<th><?php echo $this->Paginator->sort('url'); ?></th>
							<th><?php echo $this->Paginator->sort('description'); ?></th>
							<th><?php echo $this->Paginator->sort('param'); ?></th>
							<th><?php echo $this->Paginator->sort('created'); ?></th>
							<th><?php echo $this->Paginator->sort('modified'); ?></th>
							<th><?php echo $this->Paginator->sort('functionality_type_id'); ?></th>
							<th class="actions"><?php echo __('Actions'); ?></th>
						</tr>
					</thead>
					<tbody>
<?php foreach ($functionalities as $functionality): ?>
	<tr>
		<td><?php echo h($functionality['Functionality']['id']); ?>&nbsp;</td>
		<td><?php echo h($functionality['Functionality']['name']); ?>&nbsp;</td>
		<td><?php echo h($functionality['Functionality']['active']); ?>&nbsp;</td>
		<td><?php echo h($functionality['Functionality']['url']); ?>&nbsp;</td>
		<td><?php echo h($functionality['Functionality']['description']); ?>&nbsp;</td>
		<td><?php echo h($functionality['Functionality']['param']); ?>&nbsp;</td>
		<td><?php echo h($functionality['Functionality']['created']); ?>&nbsp;</td>
		<td><?php echo h($functionality['Functionality']['modified']); ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($functionality['FunctionalityType']['name'], array('controller' => 'functionality_types', 'action' => 'view', $functionality['FunctionalityType']['id'])); ?>
		</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $functionality['Functionality']['id']), array('class' => 'btn btn-default btn-xs')); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $functionality['Functionality']['id']), array('class' => 'btn btn-default btn-xs')); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $functionality['Functionality']['id']), array('class' => 'btn btn-default btn-xs'), __('Are you sure you want to delete # %s?', $functionality['Functionality']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
					</tbody>
				</table>
			</div><!-- /.table-responsive -->
			
			<p><small>
				<?php
					echo $this->Paginator->counter(array(
					'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
					));
				?>
			</small></p>

			<ul class="pagination">
				<?php
					echo $this->Paginator->prev('< ' . __('Previous'), array('tag' => 'li'), null, array('class' => 'disabled', 'tag' => 'li', 'disabledTag' => 'a'));
					echo $this->Paginator->numbers(array('separator' => '', 'currentTag' => 'a', 'tag' => 'li', 'currentClass' => 'disabled'));
					echo $this->Paginator->next(__('Next') . ' >', array('tag' => 'li'), null, array('class' => 'disabled', 'tag' => 'li', 'disabledTag' => 'a'));
				?>
			</ul><!-- /.pagination -->
			
		</div><!-- /.index -->
	
	</div><!-- /#page-content .col-sm-9 -->

</div><!-- /#page-container .row-fluid -->