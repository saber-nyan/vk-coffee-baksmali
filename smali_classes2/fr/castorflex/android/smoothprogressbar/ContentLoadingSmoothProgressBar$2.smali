.class Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar$2;
.super Ljava/lang/Object;
.source "ContentLoadingSmoothProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar;


# direct methods
.method constructor <init>(Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar;

    .prologue
    .line 34
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar$2;->this$0:Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar$2;->this$0:Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar;

    invoke-static {v0, v1}, Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar;->access$202(Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar;Z)Z

    .line 39
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar$2;->this$0:Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar;

    invoke-static {v0}, Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar;->access$300(Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar$2;->this$0:Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar;->access$102(Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar;J)J

    .line 41
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar$2;->this$0:Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar;

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/ContentLoadingSmoothProgressBar;->setVisibility(I)V

    .line 43
    :cond_0
    return-void
.end method
