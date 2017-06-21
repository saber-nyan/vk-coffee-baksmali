.class Lcom/vk/attachpicker/screen/CropScreen$1;
.super Ljava/lang/Object;
.source "CropScreen.java"

# interfaces
.implements Lcom/vk/attachpicker/crop/CropImageView$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/CropScreen;->createView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/CropScreen;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/CropScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/CropScreen;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/vk/attachpicker/screen/CropScreen$1;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageGeometryChange()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen$1;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vk/attachpicker/screen/CropScreen;->access$100(Lcom/vk/attachpicker/screen/CropScreen;Z)V

    .line 168
    return-void
.end method

.method public setAdjusterViewTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen$1;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/CropScreen;->access$000(Lcom/vk/attachpicker/screen/CropScreen;)Lcom/vk/attachpicker/widget/AdjusterView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/widget/AdjusterView;->setTouchEnabled(Z)V

    .line 163
    return-void
.end method

.method public setControlsTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 172
    iget-object v0, p0, Lcom/vk/attachpicker/screen/CropScreen$1;->this$0:Lcom/vk/attachpicker/screen/CropScreen;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/screen/CropScreen;->setControlsEnabled(Z)V

    .line 173
    return-void
.end method
