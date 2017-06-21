.class public Lcom/vkcoffee/android/ui/util/Segmenter$Footer;
.super Ljava/lang/Object;
.source "Segmenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/util/Segmenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Footer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;
    }
.end annotation


# instance fields
.field mState:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mText:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method public getState()Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/Segmenter$Footer;->mState:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/Segmenter$Footer;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/Segmenter$Footer;->mText:Ljava/lang/String;

    goto :goto_0
.end method
