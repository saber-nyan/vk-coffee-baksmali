.class Lcom/vkcoffee/android/fragments/AuthCheckFragment$TimeUpdater;
.super Ljava/lang/Object;
.source "AuthCheckFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AuthCheckFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$TimeUpdater;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/AuthCheckFragment;Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/AuthCheckFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/AuthCheckFragment$1;

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/AuthCheckFragment$TimeUpdater;-><init>(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3c

    .line 256
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$TimeUpdater;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->access$100(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$TimeUpdater;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->access$000(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long v2, v10, v4

    .line 258
    .local v2, "time":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 259
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$TimeUpdater;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    const v5, 0x7f0804f2

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 260
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    const-string/jumbo v4, "%d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    div-long v8, v2, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    rem-long v8, v2, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 261
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$TimeUpdater;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->access$400(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$TimeUpdater;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->access$100(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)Landroid/view/View;

    move-result-object v1

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, p0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    .end local v0    # "ssb":Landroid/text/SpannableStringBuilder;
    .end local v2    # "time":J
    :cond_0
    :goto_0
    return-void

    .line 264
    .restart local v2    # "time":J
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AuthCheckFragment$TimeUpdater;->this$0:Lcom/vkcoffee/android/fragments/AuthCheckFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AuthCheckFragment;->access$600(Lcom/vkcoffee/android/fragments/AuthCheckFragment;)V

    goto :goto_0
.end method
