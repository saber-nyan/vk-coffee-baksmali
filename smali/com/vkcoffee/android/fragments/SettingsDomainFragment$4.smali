.class Lcom/vkcoffee/android/fragments/SettingsDomainFragment$4;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "SettingsDomainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->checkDomain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 196
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->access$100(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)Z

    .line 197
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->access$800(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080165

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    const v1, -0x30d8da

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->access$700(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;I)V

    .line 199
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->access$502(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;Lcom/vkcoffee/android/api/VKAPIRequest;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 200
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->access$502(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;Lcom/vkcoffee/android/api/VKAPIRequest;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 180
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->access$100(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)Z

    .line 181
    iget-boolean v0, p1, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;->isValid:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->access$800(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080137

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 183
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    const v1, -0xbd5fb9

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->access$700(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;I)V

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    iget-boolean v1, p1, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;->isValid:Z

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->access$602(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;Z)Z

    .line 189
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->invalidateOptionsMenu()V

    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    iget-boolean v1, p1, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;->isValid:Z

    iget-object v2, p1, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;->suggestions:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->access$900(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;ZLjava/util/List;)V

    .line 191
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->access$800(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$4;->this$0:Lcom/vkcoffee/android/fragments/SettingsDomainFragment;

    const v1, -0x30d8da

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment;->access$700(Lcom/vkcoffee/android/fragments/SettingsDomainFragment;I)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 176
    check-cast p1, Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/SettingsDomainFragment$4;->success(Lcom/vkcoffee/android/api/utils/UtilsCheckScreenName$Result;)V

    return-void
.end method
