.class Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "ChatAudioAttachmentHistoryFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;
.implements Lme/grishka/appkit/views/UsableRecyclerView$LongClickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/AudioFile;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;",
        "Lme/grishka/appkit/views/UsableRecyclerView$LongClickable;"
    }
.end annotation


# instance fields
.field private artist:Landroid/widget/TextView;

.field private cacheIcon:Landroid/widget/ImageView;

.field private duration:Landroid/widget/TextView;

.field private playIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;)V
    .locals 3

    .prologue
    .line 142
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    .line 143
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f03004b

    invoke-static {p1}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->access$500(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    .line 144
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100174

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->title:Landroid/widget/TextView;

    .line 145
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->artist:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->duration:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->playIcon:Landroid/widget/ImageView;

    .line 148
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->cacheIcon:Landroid/widget/ImageView;

    .line 149
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->playIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;

    invoke-direct {v1}, Lcom/vkcoffee/android/ui/drawable/AudioVisualizerDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    return-void
.end method


# virtual methods
.method public onBind(Lcom/vkcoffee/android/AudioFile;)V
    .locals 10
    .param p1, "item"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 154
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->artist:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->duration:Landroid/widget/TextView;

    const-string/jumbo v7, "%d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p1, Lcom/vkcoffee/android/AudioFile;->duration:I

    div-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    iget v9, p1, Lcom/vkcoffee/android/AudioFile;->duration:I

    rem-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    sget-object v6, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/vkcoffee/android/AudioFile;->equals(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/vkcoffee/android/AudioFile;->equalsAdded(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v1, v3

    .line 158
    .local v1, "isCurrent":Z
    :goto_0
    sget-object v6, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 159
    .local v0, "isCached":Z
    if-eqz v1, :cond_2

    sget-object v6, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v3

    .line 161
    .local v2, "pt":Z
    :goto_1
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->playIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->playIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 164
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->cacheIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    return-void

    .end local v0    # "isCached":Z
    .end local v1    # "isCurrent":Z
    .end local v2    # "pt":Z
    :cond_1
    move v1, v4

    .line 157
    goto :goto_0

    .restart local v0    # "isCached":Z
    .restart local v1    # "isCurrent":Z
    :cond_2
    move v2, v4

    .line 159
    goto :goto_1

    .restart local v2    # "pt":Z
    :cond_3
    move v3, v5

    .line 161
    goto :goto_2

    :cond_4
    move v4, v5

    .line 164
    goto :goto_3
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 137
    check-cast p1, Lcom/vkcoffee/android/AudioFile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->onBind(Lcom/vkcoffee/android/AudioFile;)V

    return-void
.end method

.method public onClick()V
    .locals 7

    .prologue
    .line 169
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->item:Ljava/lang/Object;

    check-cast v2, Lcom/vkcoffee/android/AudioFile;

    .line 170
    .local v2, "file":Lcom/vkcoffee/android/AudioFile;
    sget-object v5, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v5, :cond_0

    .line 171
    sget-object v5, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v5}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v1

    .line 172
    .local v1, "cur":Lcom/vkcoffee/android/AudioFile;
    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/AudioFile;->equals(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "action"

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 194
    .end local v1    # "cur":Lcom/vkcoffee/android/AudioFile;
    :goto_0
    return-void

    .line 180
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "action"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->access$600(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;)Ljava/util/ArrayList;

    move-result-object v4

    .line 184
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x1f4

    if-le v5, v6, :cond_1

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    sput-object v4, Lcom/vkcoffee/android/AudioPlayerService;->listToPlay:Ljava/util/ArrayList;

    .line 190
    :goto_1
    const-string/jumbo v5, "list_al"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 191
    const-string/jumbo v5, "position"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->getAdapterPosition()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 188
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    :cond_1
    move-object v0, v4

    .restart local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    goto :goto_1
.end method

.method public onLongClick()Z
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->item:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    .line 199
    .local v0, "file":Lcom/vkcoffee/android/AudioFile;
    if-eqz v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;->access$700(Lcom/vkcoffee/android/fragments/messages/ChatAudioAttachmentHistoryFragment;Lcom/vkcoffee/android/AudioFile;)Z

    move-result v1

    .line 202
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
