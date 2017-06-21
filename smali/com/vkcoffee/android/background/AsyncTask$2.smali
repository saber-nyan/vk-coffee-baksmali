.class Lcom/vkcoffee/android/background/AsyncTask$2;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/background/AsyncTask;->execPool([Ljava/lang/Object;)Lcom/vkcoffee/android/background/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/background/AsyncTask;

.field final synthetic val$params:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/background/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/background/AsyncTask;

    .prologue
    .line 146
    .local p0, "this":Lcom/vkcoffee/android/background/AsyncTask$2;, "Lcom/vkcoffee/android/background/AsyncTask$2;"
    iput-object p1, p0, Lcom/vkcoffee/android/background/AsyncTask$2;->this$0:Lcom/vkcoffee/android/background/AsyncTask;

    iput-object p2, p0, Lcom/vkcoffee/android/background/AsyncTask$2;->val$params:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    .local p0, "this":Lcom/vkcoffee/android/background/AsyncTask$2;, "Lcom/vkcoffee/android/background/AsyncTask$2;"
    iget-object v0, p0, Lcom/vkcoffee/android/background/AsyncTask$2;->this$0:Lcom/vkcoffee/android/background/AsyncTask;

    iget-object v1, p0, Lcom/vkcoffee/android/background/AsyncTask$2;->val$params:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/background/AsyncTask;->execInCurrThread([Ljava/lang/Object;)V

    .line 150
    return-void
.end method
