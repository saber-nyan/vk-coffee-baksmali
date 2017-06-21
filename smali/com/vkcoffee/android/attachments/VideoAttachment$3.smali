.class Lcom/vkcoffee/android/attachments/VideoAttachment$3;
.super Ljava/lang/Object;
.source "VideoAttachment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/attachments/VideoAttachment;->showMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/attachments/VideoAttachment;

.field private final synthetic val$acts:Ljava/util/ArrayList;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/attachments/VideoAttachment;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/VideoAttachment;

    iput-object p2, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->val$acts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->val$view:Landroid/view/View;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 348
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->val$acts:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 349
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 349
    :sswitch_0
    const-string v1, "240"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v2, v2, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v2, v2, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->val$view:Landroid/view/View;

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/attachments/VideoAttachment;->access$1(Lcom/vkcoffee/android/attachments/VideoAttachment;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 349
    :sswitch_1
    const-string v1, "360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v2, v2, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v2, v2, Lcom/vkcoffee/android/api/VideoFile;->url360:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->val$view:Landroid/view/View;

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/attachments/VideoAttachment;->access$1(Lcom/vkcoffee/android/attachments/VideoAttachment;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 349
    :sswitch_2
    const-string v1, "480"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v2, v2, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v2, v2, Lcom/vkcoffee/android/api/VideoFile;->url480:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->val$view:Landroid/view/View;

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/attachments/VideoAttachment;->access$1(Lcom/vkcoffee/android/attachments/VideoAttachment;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 349
    :sswitch_3
    const-string v1, "720"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v2, v2, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v2, v2, Lcom/vkcoffee/android/api/VideoFile;->url720:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->val$view:Landroid/view/View;

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/attachments/VideoAttachment;->access$1(Lcom/vkcoffee/android/attachments/VideoAttachment;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 349
    :sswitch_4
    const-string v1, "1080"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v2, v2, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v2, v2, Lcom/vkcoffee/android/api/VideoFile;->url1080:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$3;->val$view:Landroid/view/View;

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/attachments/VideoAttachment;->access$1(Lcom/vkcoffee/android/attachments/VideoAttachment;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 349
    :sswitch_data_0
    .sparse-switch
        0xc22e -> :sswitch_0
        0xc62d -> :sswitch_1
        0xca2c -> :sswitch_2
        0xd4b5 -> :sswitch_3
        0x170157 -> :sswitch_4
    .end sparse-switch
.end method
