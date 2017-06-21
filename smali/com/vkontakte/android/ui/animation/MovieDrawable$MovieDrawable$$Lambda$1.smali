.class public Lcom/vkontakte/android/ui/animation/MovieDrawable$MovieDrawable$$Lambda$1;
.super Ljava/lang/Object;
.source "MovieDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/animation/MovieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MovieDrawable$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkontakte/android/ui/animation/MovieDrawable;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ui/animation/MovieDrawable;)V
    .locals 0
    .param p1, "movieDrawable"    # Lcom/vkontakte/android/ui/animation/MovieDrawable;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$MovieDrawable$$Lambda$1;->arg$1:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    .line 195
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkontakte/android/ui/animation/MovieDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "movieDrawable"    # Lcom/vkontakte/android/ui/animation/MovieDrawable;

    .prologue
    .line 198
    new-instance v0, Lcom/vkontakte/android/ui/animation/MovieDrawable$MovieDrawable$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/animation/MovieDrawable$MovieDrawable$$Lambda$1;-><init>(Lcom/vkontakte/android/ui/animation/MovieDrawable;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$MovieDrawable$$Lambda$1;->arg$1:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->invalidateSelf()V

    .line 203
    return-void
.end method
