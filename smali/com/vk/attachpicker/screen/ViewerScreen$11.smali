.class Lcom/vk/attachpicker/screen/ViewerScreen$11;
.super Ljava/lang/Object;
.source "ViewerScreen.java"

# interfaces
.implements Lcom/vk/attachpicker/util/Screen$ViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/ViewerScreen;->setUpPhotoViewAttachers(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

.field final synthetic val$currentPosition:I


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/ViewerScreen;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 881
    iput-object p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$11;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    iput p2, p0, Lcom/vk/attachpicker/screen/ViewerScreen$11;->val$currentPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public view(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 884
    instance-of v1, p1, Lcom/vk/attachpicker/widget/ImageViewerImageView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 885
    check-cast v0, Lcom/vk/attachpicker/widget/ImageViewerImageView;

    .line 886
    .local v0, "biv":Lcom/vk/attachpicker/widget/ImageViewerImageView;
    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->updatePhotoViewAttacher()V

    .line 887
    iget v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$11;->val$currentPosition:I

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->setCurrentPositionInImageViewer(I)V

    .line 889
    .end local v0    # "biv":Lcom/vk/attachpicker/widget/ImageViewerImageView;
    :cond_0
    return-void
.end method
