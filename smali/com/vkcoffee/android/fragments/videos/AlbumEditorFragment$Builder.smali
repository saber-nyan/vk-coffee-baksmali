.class public Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "AlbumEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 57
    const-class v0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment;

    new-instance v1, Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    invoke-direct {v1}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;-><init>()V

    const/16 v2, 0x11

    .line 58
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setGravity(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const/16 v2, 0x10

    .line 59
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setInputMode(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const/high16 v2, 0x44340000    # 720.0f

    .line 60
    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setMaxWidth(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const/high16 v2, 0x43af0000    # 350.0f

    .line 61
    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setPreferredHeight(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const/high16 v2, 0x42000000    # 32.0f

    .line 62
    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setMinSpacing(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const v2, 0x106000b

    .line 63
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->windowBackgroundResource(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    .line 57
    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Lcom/vkcoffee/android/navigation/Navigator$ActivityNavigator;)V

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$1;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public attachAlbum(Lcom/vkcoffee/android/api/VideoAlbum;)Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;
    .locals 2
    .param p1, "album"    # Lcom/vkcoffee/android/api/VideoAlbum;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "album"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 74
    iget v0, p1, Lcom/vkcoffee/android/api/VideoAlbum;->ownerID:I

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;->setOwnerId(I)Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;

    move-result-object v0

    return-object v0
.end method

.method setOwnerId(I)Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;
    .locals 2
    .param p1, "ownerId"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/AlbumEditorFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "oid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    return-object p0
.end method
