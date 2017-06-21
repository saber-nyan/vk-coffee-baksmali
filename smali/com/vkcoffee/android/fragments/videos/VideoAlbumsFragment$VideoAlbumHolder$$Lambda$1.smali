.class final synthetic Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;)Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;)V

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;->lambda$onClick$309(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
