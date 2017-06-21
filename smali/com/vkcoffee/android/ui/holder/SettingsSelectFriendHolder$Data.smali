.class public Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder$Data;
.super Ljava/lang/Object;
.source "SettingsSelectFriendHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public final clickFunc:Lcom/vkcoffee/android/functions/VoidF0;

.field public final text:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/vkcoffee/android/functions/VoidF0;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/Object;
    .param p2, "clickFunc"    # Lcom/vkcoffee/android/functions/VoidF0;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder$Data;->text:Ljava/lang/Object;

    .line 21
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/SettingsSelectFriendHolder$Data;->clickFunc:Lcom/vkcoffee/android/functions/VoidF0;

    .line 22
    return-void
.end method
