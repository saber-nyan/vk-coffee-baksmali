.class public Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;
.super Ljava/lang/Object;
.source "SectionedPhotoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Section"
.end annotation


# instance fields
.field public adapter:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;

.field public end:I

.field public headerAdapter:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$SectionHeaderAdapter;

.field public start:I

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;

.field public title:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->this$0:Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Section{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/photos/SectionedPhotoListFragment$Section;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
