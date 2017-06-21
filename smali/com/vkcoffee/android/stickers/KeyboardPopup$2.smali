.class final Lcom/vkcoffee/android/stickers/KeyboardPopup$2;
.super Landroid/content/IntentFilter;
.source "KeyboardPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/KeyboardPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    const-string/jumbo v0, "com.vkcoffee.andoroid.HIDE_EMOJI_POPUP"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup$2;->addAction(Ljava/lang/String;)V

    .line 58
    return-void
.end method
