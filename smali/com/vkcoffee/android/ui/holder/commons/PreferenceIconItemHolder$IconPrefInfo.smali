.class public Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;
.super Ljava/lang/Object;
.source "PreferenceIconItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconPrefInfo"
.end annotation


# instance fields
.field public final iconRes:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public final text:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "iconRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/Object;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;->iconRes:I

    .line 25
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;->text:Ljava/lang/Object;

    .line 26
    return-void
.end method
