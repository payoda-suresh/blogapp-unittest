get(:show,{'id' =>"12"},{'user_id' => 23})

get(:view,{'id' => '12'},nil,{'message' => 'view post'})

flash["gordon"] flash[:gordon]

session["shmession"] session[:shmession]

cookies["good_for_you"] cookies[:good_for_you]

assigns["something"] assigns(:something)

@controller - the controller processing the response

@request - the request

@response - the response

assert_template :index

assert_template layout: "layouts/application",partial: "_form"

assert_select(element,selector [equality],[message])

assert_select 'title',"welcome to rails testing guide"

view assert methods

assert_select_email

assert_select_encoded

css_select(selector)

css_select(element,selector)

example:

assert_select_email do 
	assert_select 'small','please click the unsubscribe link if you want to opt-output'
end

"testing routes"

test "should route to post" do
	assert_routing '/posts/1',{:controller => 'posts',:action => 'show',id: '1'}
end

setup :intialize_post

def teardown
	@post = nil
end

private:

def initialize_post
	@post = posts(:one)
end






