.class final synthetic Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/PostListFragment;

.field private final arg$2:Ljava/util/ArrayList;

.field private final arg$3:Lcom/vkcoffee/android/NewsEntry;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/PostListFragment;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$5;->arg$1:Lcom/vkcoffee/android/fragments/PostListFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$5;->arg$2:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$5;->arg$3:Lcom/vkcoffee/android/NewsEntry;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/PostListFragment;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsEntry;)Landroid/widget/PopupMenu$OnMenuItemClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$5;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsEntry;)V

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$5;->arg$1:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$5;->arg$2:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$5;->arg$3:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v0, v1, v2, p1}, Lcom/vkcoffee/android/fragments/PostListFragment;->lambda$showItemOptions$336(Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsEntry;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
