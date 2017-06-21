.class Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;
.super Ljava/lang/Thread;
.source "BirthdaysFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$run$377()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->loaded:Z

    .line 128
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->dataLoaded()V

    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->updateList()V

    .line 130
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getTodayBirthdays()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mTodayBirthdays:Ljava/util/List;

    .line 112
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getTomorrowBirthdays()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mTomorrowBirthdays:Ljava/util/List;

    .line 113
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getUpcomingBirthdays()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mUpcomingBirthdays:Ljava/util/List;

    .line 115
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mTodayBirthdays:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mTodayBirthdays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mData:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mTodayBirthdays:Ljava/util/List;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v3, 0x7f080547

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->addSection(Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mTomorrowBirthdays:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mTomorrowBirthdays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mData:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mTomorrowBirthdays:Ljava/util/List;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v3, 0x7f08054a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->addSection(Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mUpcomingBirthdays:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mUpcomingBirthdays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mData:Lcom/vkcoffee/android/ui/util/SectionSegmenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mUpcomingBirthdays:Ljava/util/List;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v3, 0x7f080561

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/util/SectionSegmenter;->addSection(Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->mActive:Z

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment$2;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    :cond_3
    return-void
.end method
