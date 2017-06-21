.class public Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$EditAlbumFragment$$Lambda$2;
.super Ljava/lang/Object;
.source "EditAlbumFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditAlbumFragment$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)V
    .locals 0
    .param p1, "editAlbumFragment"    # Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$EditAlbumFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    .line 266
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "editAlbumFragment"    # Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    .prologue
    .line 269
    new-instance v0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$EditAlbumFragment$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$EditAlbumFragment$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment$EditAlbumFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/photos/EditAlbumFragment;->lambda$onCreateContentView$511(Landroid/view/View;)V

    .line 274
    return-void
.end method
