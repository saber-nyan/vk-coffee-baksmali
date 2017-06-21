.class public Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "SelectGeoPointFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 52
    const-class v0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;

    new-instance v1, Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    invoke-direct {v1}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;-><init>()V

    const/16 v2, 0x11

    .line 53
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setGravity(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const/16 v2, 0x10

    .line 54
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setInputMode(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const/high16 v2, 0x44340000    # 720.0f

    .line 55
    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setMaxWidth(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const/high16 v2, 0x42000000    # 32.0f

    .line 56
    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setMinSpacing(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const v2, 0x106000b

    .line 57
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->windowBackgroundResource(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    .line 52
    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Lcom/vkcoffee/android/navigation/Navigator$ActivityNavigator;)V

    .line 59
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "create_place"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "place_title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "place_address"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-object p0
.end method

.method public place(DD)Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "prevLat"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "prevLon"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 71
    return-object p0
.end method
