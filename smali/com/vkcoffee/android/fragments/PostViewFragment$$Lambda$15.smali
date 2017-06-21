.class final synthetic Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$15;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$15;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/widget/PopupMenu$OnMenuItemClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$15;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$15;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$$Lambda$15;->arg$1:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->lambda$null$515(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
