.class final synthetic Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

.field private final arg$2:Ljava/util/ArrayList;

.field private final arg$3:Lcom/vkcoffee/android/NewsComment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsComment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$10;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$10;->arg$2:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$10;->arg$3:Lcom/vkcoffee/android/NewsComment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsComment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$10;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsComment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$10;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$10;->arg$2:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$10;->arg$3:Lcom/vkcoffee/android/NewsComment;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->lambda$showCommentActions$522(Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsComment;Landroid/content/DialogInterface;I)V

    return-void
.end method
