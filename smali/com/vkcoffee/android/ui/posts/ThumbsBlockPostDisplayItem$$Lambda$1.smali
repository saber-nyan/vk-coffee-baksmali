.class final synthetic Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;

.field private final arg$2:I

.field private final arg$3:Ljava/util/ArrayList;

.field private final arg$4:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;ILjava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;

    iput p2, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$$Lambda$1;->arg$2:I

    iput-object p3, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$$Lambda$1;->arg$3:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$$Lambda$1;->arg$4:Landroid/view/View;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;ILjava/util/ArrayList;Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$$Lambda$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$$Lambda$1;-><init>(Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;ILjava/util/ArrayList;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$$Lambda$1;->arg$1:Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;

    iget v1, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$$Lambda$1;->arg$2:I

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$$Lambda$1;->arg$3:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem$$Lambda$1;->arg$4:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;->lambda$bindView$719(ILjava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
