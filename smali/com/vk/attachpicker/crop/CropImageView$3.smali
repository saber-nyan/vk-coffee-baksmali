.class Lcom/vk/attachpicker/crop/CropImageView$3;
.super Landroid/os/Handler;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/crop/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/crop/CropImageView;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/crop/CropImageView;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/crop/CropImageView;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/vk/attachpicker/crop/CropImageView$3;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 405
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropImageView$3;->this$0:Lcom/vk/attachpicker/crop/CropImageView;

    invoke-static {v0}, Lcom/vk/attachpicker/crop/CropImageView;->access$700(Lcom/vk/attachpicker/crop/CropImageView;)V

    .line 408
    :cond_0
    return-void
.end method
