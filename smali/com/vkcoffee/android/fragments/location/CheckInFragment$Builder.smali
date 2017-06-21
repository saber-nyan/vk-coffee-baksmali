.class Lcom/vkcoffee/android/fragments/location/CheckInFragment$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "CheckInFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/location/CheckInFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 115
    const-class v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;

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

    .line 116
    return-void
.end method
