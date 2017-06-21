.class final synthetic Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

.field private final arg$2:Landroid/view/ViewGroup;

.field private final arg$3:Ljava/util/List;

.field private final arg$4:I

.field private final arg$5:Lcom/vkcoffee/android/Photo$Image;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;Landroid/view/ViewGroup;Ljava/util/List;ILcom/vkcoffee/android/Photo$Image;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$$Lambda$1;->arg$2:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$$Lambda$1;->arg$3:Ljava/util/List;

    iput p4, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$$Lambda$1;->arg$4:I

    iput-object p5, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$$Lambda$1;->arg$5:Lcom/vkcoffee/android/Photo$Image;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;Landroid/view/ViewGroup;Ljava/util/List;ILcom/vkcoffee/android/Photo$Image;)Landroid/view/View$OnClickListener;
    .locals 6

    new-instance v0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$$Lambda$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$$Lambda$1;-><init>(Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;Landroid/view/ViewGroup;Ljava/util/List;ILcom/vkcoffee/android/Photo$Image;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$$Lambda$1;->arg$2:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$$Lambda$1;->arg$3:Ljava/util/List;

    iget v3, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$$Lambda$1;->arg$4:I

    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter$$Lambda$1;->arg$5:Lcom/vkcoffee/android/Photo$Image;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder$Adapter;->lambda$instantiateItem$705(Landroid/view/ViewGroup;Ljava/util/List;ILcom/vkcoffee/android/Photo$Image;Landroid/view/View;)V

    return-void
.end method
