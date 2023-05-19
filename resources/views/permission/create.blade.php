{!! Form::open(['route' => 'permission.store', 'method' => 'Post', 'enctype' => 'multipart/form-data']) !!}
<div class="modal-body">
    <div class="row">
        <div class="form-group col-6 ">
            {{ Form::label('name', __('Name'), ['class' => 'form-label']) }}
            {!! Form::text('name', null, ['placeholder' => 'Enter name', 'class' => 'form-control']) !!}
        </div>
    </div>
</div>
<div class="modal-footer">
    <div class="float-end">
        {{ Form::button(__('Cancel'), ['class' => 'btn btn-secondary', 'data-bs-dismiss' => 'modal']) }}
        {!! Form::submit(__('Save'), ['class' => 'btn btn-primary']) !!}
    </div>
</div>
{!! Form::close() !!}
