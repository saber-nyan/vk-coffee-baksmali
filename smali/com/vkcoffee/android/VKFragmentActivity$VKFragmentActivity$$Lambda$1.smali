.class public Lcom/vkcoffee/android/VKFragmentActivity$VKFragmentActivity$$Lambda$1;
.super Ljava/lang/Object;
.source "VKFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/VKFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VKFragmentActivity$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/VKFragmentActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/VKFragmentActivity;)V
    .locals 0
    .param p1, "vKFragmentActivity"    # Lcom/vkcoffee/android/VKFragmentActivity;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/vkcoffee/android/VKFragmentActivity$VKFragmentActivity$$Lambda$1;->arg$1:Lcom/vkcoffee/android/VKFragmentActivity;

    .line 109
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/VKFragmentActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "vKFragmentActivity"    # Lcom/vkcoffee/android/VKFragmentActivity;

    .prologue
    .line 112
    new-instance v0, Lcom/vkcoffee/android/VKFragmentActivity$VKFragmentActivity$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKFragmentActivity$VKFragmentActivity$$Lambda$1;-><init>(Lcom/vkcoffee/android/VKFragmentActivity;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vkcoffee/android/VKFragmentActivity$VKFragmentActivity$$Lambda$1;->arg$1:Lcom/vkcoffee/android/VKFragmentActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/VKFragmentActivity;->lambda$setTitleMarquee$697()V

    .line 117
    return-void
.end method
