.class final synthetic Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;

.field private final arg$2:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment$$Lambda$1;->arg$2:Lcom/vkcoffee/android/UserProfile;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;Lcom/vkcoffee/android/UserProfile;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;Lcom/vkcoffee/android/UserProfile;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment$$Lambda$1;->arg$2:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/fragments/fave/FaveLinkListFragment;->lambda$showFavoritesRemoveDialog$340(Lcom/vkcoffee/android/UserProfile;Landroid/content/DialogInterface;I)V

    return-void
.end method
