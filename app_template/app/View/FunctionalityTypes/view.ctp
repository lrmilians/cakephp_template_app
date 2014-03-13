
<div id="page-container" class="row">

	<div id="sidebar" class="col-sm-3">
		
		<div class="actions">
			
			<ul class="list-group">			
						<li class="list-group-item"><?php echo $this->Html->link(__('Edit Functionality Type'), array('action' => 'edit', $functionalityType['FunctionalityType']['id']), array('class' => '')); ?> </li>
		<li class="list-group-item"><?php echo $this->Form->postLink(__('Delete Functionality Type'), array('action' => 'delete', $functionalityType['FunctionalityType']['id']), array('class' => ''), __('Are you sure you want to delete # %s?', $functionalityType['FunctionalityType']['id'])); ?> </li>
		<li class="list-group-item"><?php echo $this->Html->link(__('List Functionality Types'), array('action' => 'index'), array('class' => '')); ?> </li>
		<li class="list-group-item"><?php echo $this->Html->link(__('New Functionality Type'), array('action' => 'add'), array('class' => '')); ?> </li>
		<li class="list-group-item"><?php echo $this->Html->link(__('List Functionalities'), array('controller' => 'functionalities', 'action' => 'index'), array('class' => '')); ?> </li>
		<li class="list-group-item"><?php echo $this->Html->link(__('New Functionality'), array('controller' => 'functionalities', 'action' => 'add'), array('class' => '')); ?> </li>
				
			</ul><!-- /.list-group -->
			
		</div><!-- /.actions -->
		
	</div><!-- /#sidebar .span3 -->
	
	<div id="page-content" class="col-sm-9">
		
		<div class="functionalityTypes view">

			<h2><?php  echo __('Functionality Type'); ?></h2>
			
			<div class="table-responsive">
				<table class="table table-striped table-bordered">
					<tbody>
						<tr>		<td><strong><?php echo __('Id'); ?></strong></td>
		<td>
			<?php echo h($functionalityType['FunctionalityType']['id']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><strong><?php echo __('Name'); ?></strong></td>
		<td>
			<?php echo h($functionalityType['FunctionalityType']['name']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><strong><?php echo __('Description'); ?></strong></td>
		<td>
			<?php echo h($functionalityType['FunctionalityType']['description']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><strong><?php echo __('Created'); ?></strong></td>
		<td>
			<?php echo h($functionalityType['FunctionalityType']['created']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><strong><?php echo __('Modified'); ?></strong></td>
		<td>
			<?php echo h($functionalityType['FunctionalityType']['modified']); ?>
			&nbsp;
		</td>
</tr>					</tbody>
				</table><!-- /.table table-striped table-bordered -->
			</div><!-- /.table-responsive -->
			
		</div><!-- /.view -->

					
			<div class="related">

				<h3><?php echo __('Related Functionalities'); ?></h3>
				
				<?php if (!empty($functionalityType['Functionality'])): ?>
					
					<div class="table-responsive">
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
											<th><?php echo __('Id'); ?></th>
		<th><?php echo __('Name'); ?></th>
		<th><?php echo __('Active'); ?></th>
		<th><?php echo __('Url'); ?></th>
		<th><?php echo __('Description'); ?></th>
		<th><?php echo __('Param'); ?></th>
		<th><?php echo __('Created'); ?></th>
		<th><?php echo __('Modified'); ?></th>
		<th><?php echo __('Functionality Type Id'); ?></th>
									<th class="actions"><?php echo __('Actions'); ?></th>
								</tr>
							</thead>
							<tbody>
									<?php
										$i = 0;
										foreach ($functionalityType['Functionality'] as $functionality): ?>
		<tr>
			<td><?php echo $functionality['id']; ?></td>
			<td><?php echo $functionality['name']; ?></td>
			<td><?php echo $functionality['active']; ?></td>
			<td><?php echo $functionality['url']; ?></td>
			<td><?php echo $functionality['description']; ?></td>
			<td><?php echo $functionality['param']; ?></td>
			<td><?php echo $functionality['created']; ?></td>
			<td><?php echo $functionality['modified']; ?></td>
			<td><?php echo $functionality['functionality_type_id']; ?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View'), array('controller' => 'functionalities', 'action' => 'view', $functionality['id']), array('class' => 'btn btn-default btn-xs')); ?>
				<?php echo $this->Html->link(__('Edit'), array('controller' => 'functionalities', 'action' => 'edit', $functionality['id']), array('class' => 'btn btn-default btn-xs')); ?>
				<?php echo $this->Form->postLink(__('Delete'), array('controller' => 'functionalities', 'action' => 'delete', $functionality['id']), array('class' => 'btn btn-default btn-xs'), __('Are you sure you want to delete # %s?', $functionality['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
							</tbody>
						</table><!-- /.table table-striped table-bordered -->
					</div><!-- /.table-responsive -->
					
				<?php endif; ?>

				
				<div class="actions">
					<?php echo $this->Html->link('<i class="icon-plus icon-white"></i> '.__('New Functionality'), array('controller' => 'functionalities', 'action' => 'add'), array('class' => 'btn btn-primary', 'escape' => false)); ?>				</div><!-- /.actions -->
				
			</div><!-- /.related -->

			
	</div><!-- /#page-content .span9 -->

</div><!-- /#page-container .row-fluid -->
