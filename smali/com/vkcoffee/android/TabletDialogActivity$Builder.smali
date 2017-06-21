.class public final Lcom/vkcoffee/android/TabletDialogActivity$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator$ActivityNavigator;
.source "TabletDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/TabletDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field static final EXTRA_BACKGROUND_RESOURCE:Ljava/lang/String; = "window_background_resource"

.field static final EXTRA_GRAVITY:Ljava/lang/String; = "gravity"

.field static final EXTRA_INPUT_MODE:Ljava/lang/String; = "input_mode"

.field static final EXTRA_MAX_WIDTH:Ljava/lang/String; = "max_width"

.field static final EXTRA_MIN_SPACING:Ljava/lang/String; = "min_spacing"

.field static final EXTRA_PREFERRED_HEIGHT:Ljava/lang/String; = "preferred_height"

.field static final EXTRA_WINDOW_ANIMATION:Ljava/lang/String; = "window_animation"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 253
    const-class v0, Lcom/vkcoffee/android/TabletDialogActivity;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;-><init>(Ljava/lang/Class;)V

    .line 254
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/vkcoffee/android/TabletDialogActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/vkcoffee/android/TabletDialogActivity;>;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/navigation/Navigator$ActivityNavigator;-><init>(Ljava/lang/Class;)V

    .line 250
    return-void
.end method


# virtual methods
.method public setGravity(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "gravity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    return-object p0
.end method

.method public setInputMode(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;
    .locals 2
    .param p1, "inputMode"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "input_mode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    return-object p0
.end method

.method public setMaxWidth(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;
    .locals 2
    .param p1, "maxWidth"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "max_width"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    return-object p0
.end method

.method public setMinSpacing(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;
    .locals 2
    .param p1, "spacing"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "min_spacing"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    return-object p0
.end method

.method public setPreferredHeight(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;
    .locals 2
    .param p1, "preferredHeight"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "preferred_height"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    return-object p0
.end method

.method public windowAnimationResource(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;
    .locals 2
    .param p1, "animation"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 308
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "window_animation"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    return-object p0
.end method

.method public windowBackgroundResource(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 300
    iget-object v0, p0, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->args:Landroid/os/Bundle;

    const-string/jumbo v1, "window_background_resource"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 301
    return-object p0
.end method
