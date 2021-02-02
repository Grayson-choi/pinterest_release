from django.contrib.auth.forms import UserCreationForm

class AccountUpdateForm(UserCreationForm):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # 유저 정보가 비활성화 됨 + 프론트에서 조작해도 서버에 반영되지 않음
        self.fields['username'].disabled = True