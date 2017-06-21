.class Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/background/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field progress:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TProgress;"
        }
    .end annotation
.end field

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResult;"
        }
    .end annotation
.end field

.field t:Ljava/lang/Throwable;

.field final task:Lcom/vkcoffee/android/background/AsyncTask;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/background/AsyncTask;)V
    .locals 0
    .param p1, "task"    # Lcom/vkcoffee/android/background/AsyncTask;

    .prologue
    .line 266
    .local p0, "this":Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;, "Lcom/vkcoffee/android/background/AsyncTask$AsyncResult<TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;->task:Lcom/vkcoffee/android/background/AsyncTask;

    .line 268
    return-void
.end method
