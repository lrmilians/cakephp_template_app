
<div id="page-container" class="row">

	<div id="sidebar" class="col-sm-3">
		
		<div class="actions">
			
			<ul class="list-group">			
						<li class="list-group-item"><?php echo $this->Html->link(__('Edit Functionality'), array('action' => 'edit', $functionality['Functionality']['id']), array('class' => '')); ?> </li>
		<li class="list-group-item"><?php echo $this->Form->postLink(__('Delete Functionality'), array('action' => 'delete', $functionality['Functionality']['id']), array('class' => ''), __('Are you sure you want to delete # %s?', $functionality['Functionality']['id'])); ?> </li>
		<li class="list-group-item"><?php echo $this->Html->link(__('List Functionalities'), array('action' => 'index'), array('class' => '')); ?> </li>
		<li class="list-group-item"><?php echo $this->Html->link(__('New Functionality'), array('action' => 'add'), array('class' => '')); ?> </li>
		<li class="list-group-item"><?php echo $this->Html->link(__('List Functionality Types'), array('controller' => 'functionality_types', 'action' => 'index'), array('class' => '')); ?> </li>
		<li class="list-group-item"><?php echo $this->Html->link(__('New Functionality Type'), array('controller' => 'functionality_types', 'action' => 'add'), array('class' => '')); ?> </li>
		<li class="list-group-item"><?php echo $this->Html->link(__('List Roles'), array('controller' => 'roles', 'action' => 'index'), array('class' => '')); ?> </li>
		<li class="list-group-item"><?php echo $this->Html->link(__('New Role'), array('controller' => 'roles', 'action' => 'add'), array('class' => '')); ?> </li>
				
			</ul><!-- /.list-group -->
			
		</div><!-- /.actions -->
		
	</div><!-- /#sidebar .span3 -->
	
	<div id="page-content" class="col-sm-9">
		
		<div class="functionalities view">

			<h2><?php  echo __('Functionality'); ?></h2>
			
			<div class="table-responsive">
				<table class="table table-striped table-bordered">
					<tbody>
						<tr>		<td><strong><?php echo __('Id'); ?></strong></td>
		<td>
			<?php echo h($functionality['Functionality']['id']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><strong><?php echo __('Name'); ?></strong></td>
		<td>
			<?php echo h($functionality['Functionality']['name']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><strong><?php echo __('Active'); ?></strong></td>
		<td>
			<?php echo h($functionality['Functionality']['active']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><strong><?php echo __('Url'); ?></strong></td>
		<td>
			<?php echo h($functionality['Functionality']['url']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><strong><?php echo __('Description'); ?></strong></td>
		<td>
			<?php echo h($functionality['Functionality']['description']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><strong><?php echo __('Param'); ?></strong></td>
		<td>
			<?php echo h($functionality['Functionality']['param']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><strong><?php echo __('Created'); ?></strong></td>
		<td>
			<?php echo h($functionality['Functionality']['created']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><strong><?php echo __('Modified'); ?></strong></td>
		<td>
			<?php echo h($functionality['Functionality']['modified']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><strong><?php echo __('Functionality Type'); ?></strong></td>
		<td>
			<?php echo $this->Html->link($functionality['FunctionalityType']['name'], array('controller' => 'functionality_types', 'action' => 'view', $functionality['FunctionalityType']['id']), array('class' => '')); ?>
			&nbsp;
		</td>
</tr>					</tbody>
				</table><!-- /.table table-striped table-bordered -->
			</div><!-- /.table-responsive -->
			
		</div><!-- /.view -->

					
			<div class="related">

				<h3><?php echo __('Related Roles'); ?></h3>
				
				<?php if (!empty($functionality['Role'])): ?>
					
					<div class="table-responsive">
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
											<th><?php echo __('Id'); ?></th>
		<th><?php echo __('Name'); ?></th>
		<th><?php echo __('Description'); ?></th>
		<th><?php echo __('Created'); ?></th>
		<th><?php echo __('Modified'); ?></th>
									<th class="actions"><?php echo __('Actions'); ?></th>
								</tr>
							</thead>
							<tbody>
									<?php
										$i = 0;
										foreach ($functionality['Role'] as $role): ?>
		<tr>
			<td><?php echo $role['id']; ?></td>
			<td><?php echo $role['name']; ?></td>
			<td><?php echo $role['description']; ?></td>
			<td><?php echo $role['created']; ?></td>
			<td><?php echo $role['modified']; ?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View'), array('controller' => 'roles', 'action' => 'view', $role['id']), array('class' => 'btn btn-default btn-xs')); ?>
				<?php echo $this->Html->link(__('Edit'), array('controller' => 'roles', 'action' => 'edit', $role['id']), array('class' => 'btn btn-default btn-xs')); ?>
				<?php echo $this->Form->postLink(__('Delete'), array('controller' => 'roles', 'action' => 'delete', $role['id']), array('class' => 'btn btn-default btn-xs'), __('Are you sure you want to delete # %s?', $role['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
							</tbody>
						</table><!-- /.table table-striped table-bordered -->
					</div><!-- /.table-responsive -->
					
				<?php endif; ?>

				
				<div class="actions">
					<?php echo $this->Html->link('<i class="icon-plus icon-white"></i> '.__('New Role'), array('controller' => 'roles', 'action' => 'add'), array('class' => 'btn btn-primary', 'escape' => false)); ?>				</div><!-- /.actions -->
				
			</div><!-- /.related -->

			
	</div><!-- /#page-content .span9 -->

</div><!-- /#page-container .row-fluid -->
