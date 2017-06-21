.class final synthetic Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/PostListFragment;

.field private final arg$2:Lcom/vkcoffee/android/NewsEntry;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/PostListFragment;Lcom/vkcoffee/android/NewsEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$6;->arg$1:Lcom/vkcoffee/android/fragments/PostListFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$6;->arg$2:Lcom/vkcoffee/android/NewsEntry;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/PostListFragment;Lcom/vkcoffee/android/NewsEntry;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$6;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$6;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Lcom/vkcoffee/android/NewsEntry;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$6;->arg$1:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$6;->arg$2:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/fragments/PostListFragment;->lambda$performPostAction$337(Lcom/vkcoffee/android/NewsEntry;Landroid/content/DialogInterface;I)V

    return-void
.end method
