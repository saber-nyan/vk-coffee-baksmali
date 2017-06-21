.class Lcom/vkcoffee/android/fragments/messages/ChatFragment$10;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;->updateOnline(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$10;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 2093
    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;)V
    .locals 10
    .param p1, "result"    # Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;

    .prologue
    const v9, 0x7f020174

    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2095
    iget v4, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->time:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$10;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2096
    iget v4, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->time:I

    invoke-static {v4}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v1

    .line 2097
    .local v1, "fullString":Ljava/lang/String;
    move-object v2, v1

    .line 2100
    .local v2, "object":Ljava/lang/String;
    iget v4, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    if-ne v4, v7, :cond_1

    .line 2101
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$10;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2117
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .end local v2    # "object":Ljava/lang/String;
    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2118
    .local v2, "object":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v4

    const-string v5, "F"

    invoke-virtual {v4, v5}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v3

    .line 2119
    .local v3, "spannable":Landroid/text/Spannable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2120
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v0, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v3, v4, v6, v7, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2121
    iget v4, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->online:I

    if-nez v4, :cond_a

    move-object v4, v2

    .line 2122
    check-cast v4, Landroid/text/SpannableStringBuilder;

    const-string v5, " (Offline)\u00a0"

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_1
    move-object v4, v2

    .line 2126
    check-cast v4, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2129
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$10;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    check-cast v2, Ljava/lang/CharSequence;

    .end local v2    # "object":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v4, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2132
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "fullString":Ljava/lang/String;
    .end local v3    # "spannable":Landroid/text/Spannable;
    :cond_0
    return-void

    .line 2102
    .restart local v1    # "fullString":Ljava/lang/String;
    .local v2, "object":Ljava/lang/String;
    :cond_1
    iget v4, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    if-eq v4, v5, :cond_2

    iget v4, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    if-ne v4, v8, :cond_3

    .line 2103
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$10;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201c9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2104
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget v4, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    if-eq v4, v5, :cond_4

    iget v4, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    if-ne v4, v8, :cond_5

    .line 2105
    :cond_4
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$10;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2106
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget v4, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    .line 2107
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$10;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2108
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget v4, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_7

    iget v4, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_8

    .line 2109
    :cond_7
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$10;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201cd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2110
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    iget v4, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_9

    .line 2111
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$10;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020308

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2112
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 2113
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$10;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201cb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .local v2, "object":Landroid/text/SpannableStringBuilder;
    .restart local v3    # "spannable":Landroid/text/Spannable;
    :cond_a
    move-object v4, v2

    .line 2124
    check-cast v4, Landroid/text/SpannableStringBuilder;

    const-string v5, "\u00a0(Online) "

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$10;->success(Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;)V

    return-void
.end method
