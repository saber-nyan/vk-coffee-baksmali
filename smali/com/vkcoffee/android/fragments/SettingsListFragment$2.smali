.class Lcom/vkcoffee/android/fragments/SettingsListFragment$2;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "SettingsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SettingsListFragment;->updateOnlineState()V
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
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SettingsListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    .line 186
    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;)V
    .locals 11
    .param p1, "result"    # Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;

    .prologue
    const v10, 0x7f020174

    const/4 v9, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 188
    iget v5, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->time:I

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 191
    iget-boolean v5, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->f:Z

    if-eqz v5, :cond_1

    .line 192
    const v4, 0x7f080280

    .line 197
    .local v4, "string":I
    :goto_0
    iget v5, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->time:I

    invoke-static {v5}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "fullString":Ljava/lang/String;
    move-object v2, v1

    .line 201
    .local v2, "object":Ljava/lang/String;
    iget v5, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    if-ne v5, v8, :cond_2

    .line 202
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 218
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .end local v2    # "object":Ljava/lang/String;
    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 219
    .local v2, "object":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v5

    const-string v6, "F"

    invoke-virtual {v5, v6}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v3

    .line 220
    .local v3, "spannable":Landroid/text/Spannable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v0, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 221
    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, v0, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v3, v5, v7, v8, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 222
    iget v5, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->online:I

    if-nez v5, :cond_b

    move-object v5, v2

    .line 223
    check-cast v5, Landroid/text/SpannableStringBuilder;

    const-string v6, " (Offline)\u00a0"

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_2
    move-object v5, v2

    .line 227
    check-cast v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 230
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->access$5(Lcom/vkcoffee/android/fragments/SettingsListFragment;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f100269

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    check-cast v2, Ljava/lang/CharSequence;

    .end local v2    # "object":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "fullString":Ljava/lang/String;
    .end local v3    # "spannable":Landroid/text/Spannable;
    .end local v4    # "string":I
    :cond_0
    return-void

    .line 194
    :cond_1
    const v4, 0x7f080281

    .restart local v4    # "string":I
    goto :goto_0

    .line 203
    .restart local v1    # "fullString":Ljava/lang/String;
    .local v2, "object":Ljava/lang/String;
    :cond_2
    iget v5, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    if-eq v5, v6, :cond_3

    iget v5, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    if-ne v5, v9, :cond_4

    .line 204
    :cond_3
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 205
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget v5, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    if-eq v5, v6, :cond_5

    iget v5, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    if-ne v5, v9, :cond_6

    .line 206
    :cond_5
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 207
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget v5, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    .line 208
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 209
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    iget v5, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_8

    iget v5, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_9

    .line 210
    :cond_8
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 211
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    iget v5, p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;->platform:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_a

    .line 212
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020308

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 213
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 214
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_a
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0201cb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .local v2, "object":Landroid/text/SpannableStringBuilder;
    .restart local v3    # "spannable":Landroid/text/Spannable;
    :cond_b
    move-object v5, v2

    .line 225
    check-cast v5, Landroid/text/SpannableStringBuilder;

    const-string v6, "\u00a0(Online) "

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_2
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/SettingsListFragment$2;->success(Lcom/vkcoffee/android/api/messages/MessagesGetLastActivity$Result;)V

    return-void
.end method
