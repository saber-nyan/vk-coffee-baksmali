.class Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "GeoPlaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 64
    const-class v0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    new-instance v1, Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    invoke-direct {v1}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;-><init>()V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setGravity(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setInputMode(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const/high16 v2, 0x44340000    # 720.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setMaxWidth(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setMinSpacing(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->windowBackgroundResource(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Lcom/vkcoffee/android/navigation/Navigator$ActivityNavigator;)V

    .line 65
    return-void
.end method


# virtual methods
.method public checkin(Z)Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$Builder;
    .locals 2
    .param p1, "checkin"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "checkin"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    return-object p0
.end method

.method public point(Lcom/vkcoffee/android/attachments/GeoAttachment;)Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$Builder;
    .locals 2
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/GeoAttachment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "point"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    return-object p0
.end method
