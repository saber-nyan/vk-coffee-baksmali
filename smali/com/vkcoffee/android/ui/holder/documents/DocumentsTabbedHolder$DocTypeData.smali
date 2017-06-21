.class public Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;
.super Ljava/lang/Object;
.source "DocumentsTabbedHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocTypeData"
.end annotation


# instance fields
.field public final docType:Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private docTypesLoader:Lcom/vkcoffee/android/api/docs/DocTypesLoader;

.field public docsAdapter:Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;

.field public documents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Document;",
            ">;"
        }
    .end annotation
.end field

.field public final ownerId:I


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "docType"    # Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "ownerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Document;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Document;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;->docTypesLoader:Lcom/vkcoffee/android/api/docs/DocTypesLoader;

    .line 42
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;->docType:Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;

    .line 43
    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Document;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;->documents:Ljava/util/ArrayList;

    .line 44
    iput p3, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;->ownerId:I

    .line 45
    return-void
.end method


# virtual methods
.method public getDocsAdapter(Landroid/content/Context;)Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;->docsAdapter:Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;->documents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;->docType:Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;

    iget-object v2, v2, Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;->name:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;ZLcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;->docsAdapter:Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;

    .line 51
    new-instance v0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData$1;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;->documents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;->docType:Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;

    iget v2, v2, Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;->id:I

    iget v3, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;->ownerId:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData$1;-><init>(Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;Ljava/util/ArrayList;II)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;->docTypesLoader:Lcom/vkcoffee/android/api/docs/DocTypesLoader;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;->docsAdapter:Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;

    return-object v0
.end method

.method public onNeedLoadNextPage()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;->docTypesLoader:Lcom/vkcoffee/android/api/docs/DocTypesLoader;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;->docTypesLoader:Lcom/vkcoffee/android/api/docs/DocTypesLoader;

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/docs/DocTypesLoader;->forceLoadNextPage()Z

    .line 67
    :cond_0
    return-void
.end method
