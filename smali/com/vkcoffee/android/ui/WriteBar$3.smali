.class Lcom/vkcoffee/android/ui/WriteBar$3;
.super Ljava/lang/Object;
.source "WriteBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/WriteBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final lock:Lcom/vk/attachpicker/util/TimeoutLock;

.field final synthetic this$0:Lcom/vkcoffee/android/ui/WriteBar;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/WriteBar;)V
    .locals 4
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/WriteBar;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Lcom/vk/attachpicker/util/TimeoutLock;

    const-wide/16 v2, 0x1f4

    invoke-direct {v0, v2, v3}, Lcom/vk/attachpicker/util/TimeoutLock;-><init>(J)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->lock:Lcom/vk/attachpicker/util/TimeoutLock;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 200
    iget-object v1, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->lock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v1}, Lcom/vk/attachpicker/util/TimeoutLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->lock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v1}, Lcom/vk/attachpicker/util/TimeoutLock;->lock()V

    .line 205
    iget-object v1, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/WriteBar;->access$300(Lcom/vkcoffee/android/ui/WriteBar;)Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getCount()I

    move-result v1

    iget-object v4, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/WriteBar;->access$400(Lcom/vkcoffee/android/ui/WriteBar;)I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 206
    iget-object v1, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/WriteBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080084

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v6}, Lcom/vkcoffee/android/ui/WriteBar;->access$400(Lcom/vkcoffee/android/ui/WriteBar;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 210
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/WriteBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Lcom/vk/attachpicker/AttachActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "selection_limit"

    iget-object v4, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/WriteBar;->access$400(Lcom/vkcoffee/android/ui/WriteBar;)I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/WriteBar;->access$300(Lcom/vkcoffee/android/ui/WriteBar;)Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getCount()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    const-string/jumbo v1, "enable_graffiti_att"

    iget-object v4, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    iget-boolean v4, v4, Lcom/vkcoffee/android/ui/WriteBar;->isChat:Z

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    const-string/jumbo v4, "enable_map_attachment"

    iget-object v1, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/WriteBar;->access$500(Lcom/vkcoffee/android/ui/WriteBar;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/WriteBar;->access$300(Lcom/vkcoffee/android/ui/WriteBar;)Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->containsGeoAttachment()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    const-string/jumbo v1, "enable_gift_attachment"

    iget-object v4, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    iget-boolean v4, v4, Lcom/vkcoffee/android/ui/WriteBar;->isChat:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    iget-boolean v4, v4, Lcom/vkcoffee/android/ui/WriteBar;->giftAllowed:Z

    if-eqz v4, :cond_6

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/WriteBar;->giftUser:Lcom/vkcoffee/android/UserProfile;

    if-eqz v1, :cond_2

    .line 217
    const-string/jumbo v1, "gift_user"

    iget-object v2, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/WriteBar;->giftUser:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/WriteBar;->access$600(Lcom/vkcoffee/android/ui/WriteBar;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 220
    const-string/jumbo v1, "graffiti_avatar"

    iget-object v2, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/WriteBar;->access$600(Lcom/vkcoffee/android/ui/WriteBar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/WriteBar;->access$700(Lcom/vkcoffee/android/ui/WriteBar;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 223
    const-string/jumbo v1, "graffiti_title"

    iget-object v2, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/WriteBar;->access$700(Lcom/vkcoffee/android/ui/WriteBar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    :cond_4
    iget-object v1, p0, Lcom/vkcoffee/android/ui/WriteBar$3;->this$0:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/WriteBar;->access$800(Lcom/vkcoffee/android/ui/WriteBar;)Landroid/app/Fragment;

    move-result-object v1

    const/16 v2, 0x271a

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_5
    move v1, v3

    .line 214
    goto :goto_1

    :cond_6
    move v2, v3

    .line 215
    goto :goto_2
.end method
