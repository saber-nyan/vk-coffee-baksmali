.class Lcom/vkcoffee/android/PhotoViewer$23;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoViewer;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/PhotoViewer;

.field final synthetic val$album:Lcom/vkcoffee/android/api/PhotoAlbum;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PhotoViewer;Landroid/content/Context;Lcom/vkcoffee/android/api/PhotoAlbum;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/PhotoViewer;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$23;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    iput-object p3, p0, Lcom/vkcoffee/android/PhotoViewer$23;->val$album:Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 4

    .prologue
    .line 1153
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.PHOTO_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "aid"

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$23;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v2}, Lcom/vkcoffee/android/PhotoViewer;->access$000(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/Photo;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/Photo;->albumID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1155
    const-string/jumbo v1, "pid"

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$23;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v2}, Lcom/vkcoffee/android/PhotoViewer;->access$000(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/Photo;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/Photo;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1156
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$23;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v1}, Lcom/vkcoffee/android/PhotoViewer;->access$1500(Lcom/vkcoffee/android/PhotoViewer;)Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1157
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$23;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v1}, Lcom/vkcoffee/android/PhotoViewer;->access$000(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/Photo;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$23;->val$album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v2, v2, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    iput v2, v1, Lcom/vkcoffee/android/Photo;->albumID:I

    .line 1158
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.vkcoffee.android.PHOTO_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1159
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "aid"

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$23;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v2}, Lcom/vkcoffee/android/PhotoViewer;->access$000(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/Photo;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/Photo;->albumID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1160
    const-string/jumbo v1, "photo"

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$23;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v2}, Lcom/vkcoffee/android/PhotoViewer;->access$000(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/Photo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1161
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$23;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v1}, Lcom/vkcoffee/android/PhotoViewer;->access$1500(Lcom/vkcoffee/android/PhotoViewer;)Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1162
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$23;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/PhotoViewer;->dismiss()V

    .line 1163
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$23;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v1}, Lcom/vkcoffee/android/PhotoViewer;->access$1500(Lcom/vkcoffee/android/PhotoViewer;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08034a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1164
    return-void
.end method
