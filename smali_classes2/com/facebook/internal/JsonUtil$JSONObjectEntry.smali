.class final Lcom/facebook/internal/JsonUtil$JSONObjectEntry;
.super Ljava/lang/Object;
.source "JsonUtil.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/JsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JSONObjectEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/facebook/internal/JsonUtil$JSONObjectEntry;->key:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/facebook/internal/JsonUtil$JSONObjectEntry;->value:Ljava/lang/Object;

    .line 63
    return-void
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FieldGetter"
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/facebook/internal/JsonUtil$JSONObjectEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FieldGetter"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/internal/JsonUtil$JSONObjectEntry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/internal/JsonUtil$JSONObjectEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "JSONObjectEntry is immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
