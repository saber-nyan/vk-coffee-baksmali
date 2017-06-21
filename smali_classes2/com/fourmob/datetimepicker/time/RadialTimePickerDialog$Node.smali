.class Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
.super Ljava/lang/Object;
.source "RadialTimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mLegalKeys:[I

.field final synthetic this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;


# direct methods
.method public varargs constructor <init>(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;[I)V
    .locals 1
    .param p2, "legalKeys"    # [I

    .prologue
    .line 921
    iput-object p1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->this$0:Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 922
    iput-object p2, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->mLegalKeys:[I

    .line 923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    .line 924
    return-void
.end method


# virtual methods
.method public addChild(Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;)V
    .locals 1
    .param p1, "child"    # Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    .prologue
    .line 927
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    return-void
.end method

.method public canReach(I)Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    .locals 4
    .param p1, "key"    # I

    .prologue
    const/4 v1, 0x0

    .line 940
    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 948
    :goto_0
    return-object v0

    .line 943
    :cond_0
    iget-object v2, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;

    .line 944
    .local v0, "child":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    invoke-virtual {v0, p1}, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0    # "child":Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;
    :cond_2
    move-object v0, v1

    .line 948
    goto :goto_0
.end method

.method public containsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 931
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->mLegalKeys:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 932
    iget-object v1, p0, Lcom/fourmob/datetimepicker/time/RadialTimePickerDialog$Node;->mLegalKeys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 933
    const/4 v1, 0x1

    .line 936
    :goto_1
    return v1

    .line 931
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 936
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
