.class final Lcom/vkcoffee/android/cache/AudioCache$1;
.super Ljava/lang/Object;
.source "AudioCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/cache/AudioCache;->fillIDs(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/vkcoffee/android/cache/AudioCache$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/vkcoffee/android/cache/AudioCache$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vkcoffee/android/cache/AudioCache;->fillIDsBlocking(Landroid/content/Context;)V

    .line 236
    return-void
.end method
