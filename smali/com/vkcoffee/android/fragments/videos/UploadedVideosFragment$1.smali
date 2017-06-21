.class Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "UploadedVideosFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$null$306(Ljava/util/ArrayList;Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    iput-object v0, p2, Lcom/vkcoffee/android/api/VideoFile;->ownerName:Ljava/lang/String;

    .line 53
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v0, p2, Lcom/vkcoffee/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;->prepend(Lcom/vkcoffee/android/api/VideoFile;)V

    .line 56
    return-void
.end method

.method synthetic lambda$onReceive$307(Lcom/vkcoffee/android/api/VideoFile;Ljava/util/ArrayList;)V
    .locals 2
    .param p2, "users"    # Ljava/util/ArrayList;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 49
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 50
    invoke-static {p0, p2, p1}, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1;Ljava/util/ArrayList;Lcom/vkcoffee/android/api/VideoFile;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 58
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_1

    .line 64
    :cond_1
    :goto_1
    return-void

    .line 41
    :pswitch_0
    const-string/jumbo v5, "com.vkcoffee.android.UPLOAD_DONE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 43
    :pswitch_1
    const-string/jumbo v2, "result"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 44
    .local v0, "o":Landroid/os/Parcelable;
    instance-of v2, v0, Lcom/vkcoffee/android/api/VideoFile;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 45
    check-cast v1, Lcom/vkcoffee/android/api/VideoFile;

    .line 46
    .local v1, "video":Lcom/vkcoffee/android/api/VideoFile;
    iget v2, v1, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;->getOwnerID()I

    move-result v4

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;

    iget-boolean v2, v2, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment;->loaded:Z

    if-eqz v2, :cond_1

    .line 47
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    iget v4, v1, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {p0, v1}, Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/videos/UploadedVideosFragment$1;Lcom/vkcoffee/android/api/VideoFile;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    goto :goto_1

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x48be93a1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
