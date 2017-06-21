.class final synthetic Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vk/attachpicker/util/Screen$ViewCallback;


# instance fields
.field private final arg$1:Lcom/vk/attachpicker/screen/ViewerScreen;

.field private final arg$2:[Lcom/vk/attachpicker/widget/ImageViewerImageView;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/screen/ViewerScreen;[Lcom/vk/attachpicker/widget/ImageViewerImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$6;->arg$1:Lcom/vk/attachpicker/screen/ViewerScreen;

    iput-object p2, p0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$6;->arg$2:[Lcom/vk/attachpicker/widget/ImageViewerImageView;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vk/attachpicker/screen/ViewerScreen;[Lcom/vk/attachpicker/widget/ImageViewerImageView;)Lcom/vk/attachpicker/util/Screen$ViewCallback;
    .locals 1

    new-instance v0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$6;

    invoke-direct {v0, p0, p1}, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$6;-><init>(Lcom/vk/attachpicker/screen/ViewerScreen;[Lcom/vk/attachpicker/widget/ImageViewerImageView;)V

    return-object v0
.end method


# virtual methods
.method public view(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$6;->arg$1:Lcom/vk/attachpicker/screen/ViewerScreen;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$$Lambda$6;->arg$2:[Lcom/vk/attachpicker/widget/ImageViewerImageView;

    invoke-virtual {v0, v1, p1}, Lcom/vk/attachpicker/screen/ViewerScreen;->lambda$getCurrentZoomableImageView$40([Lcom/vk/attachpicker/widget/ImageViewerImageView;Landroid/view/View;)V

    return-void
.end method
