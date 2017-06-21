.class Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

.field final synthetic val$fromCache:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;Landroid/app/Fragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    iput-boolean p3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$1;->val$fromCache:Z

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;)V
    .locals 5
    .param p1, "result"    # Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->access$000(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->access$102(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    invoke-static {v3, v1}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->access$202(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;Z)Z

    .line 167
    :cond_0
    iget-object v3, p1, Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;->newFrom:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;->newFrom:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string/jumbo v3, "0"

    iget-object v4, p1, Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;->newFrom:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 168
    .local v1, "more":Z
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    iget-object v4, p1, Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;->newFrom:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->access$102(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    iget-boolean v4, p1, Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;->foundDividers:Z

    invoke-static {v3, v4}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->access$202(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;Z)Z

    .line 170
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    iget-object v4, p1, Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;->n:Ljava/util/List;

    invoke-static {v3, v4, v1}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->access$300(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;Ljava/util/List;Z)V

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p1, Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;->n:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 173
    iget-object v3, p1, Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/api/models/Notification;

    .line 174
    .local v2, "notification":Lcom/vkcoffee/android/api/models/Notification;
    iget-object v3, v2, Lcom/vkcoffee/android/api/models/Notification;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    if-eqz v3, :cond_2

    .line 175
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    invoke-static {v3, v2}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->access$400(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;Lcom/vkcoffee/android/api/models/Notification;)V

    .line 172
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v2    # "notification":Lcom/vkcoffee/android/api/models/Notification;
    :cond_3
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->resetNotifications()V

    .line 180
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 181
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 184
    :cond_4
    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$1;->val$fromCache:Z

    if-eqz v3, :cond_5

    .line 185
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->access$500(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)V

    .line 187
    :cond_5
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 160
    check-cast p1, Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$1;->success(Lcom/vkcoffee/android/api/notifications/NotificationsGet$Result;)V

    return-void
.end method
