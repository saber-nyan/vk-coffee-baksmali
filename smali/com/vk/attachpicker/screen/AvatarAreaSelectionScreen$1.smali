.class Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen$1;
.super Ljava/lang/Object;
.source "AvatarAreaSelectionScreen.java"

# interfaces
.implements Lcom/vk/attachpicker/crop/CropImageView$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;->createView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen$1;->this$0:Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageGeometryChange()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public setAdjusterViewTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 127
    return-void
.end method

.method public setControlsTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen$1;->this$0:Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;->setControlsEnabled(Z)V

    .line 136
    return-void
.end method
