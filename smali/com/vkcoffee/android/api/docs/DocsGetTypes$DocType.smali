.class public Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;
.super Ljava/lang/Object;
.source "DocsGetTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/docs/DocsGetTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocType"
.end annotation


# instance fields
.field public final count:I

.field public final id:I

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;->id:I

    .line 68
    iput-object p2, p0, Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;->name:Ljava/lang/String;

    .line 69
    iput p3, p0, Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;->count:I

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;->id:I

    .line 62
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;->name:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/docs/DocsGetTypes$DocType;->count:I

    .line 64
    return-void
.end method
