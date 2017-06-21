.class public final Lcom/vkcoffee/android/orm/Index$MetaData;
.super Ljava/lang/Object;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/orm/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetaData"
.end annotation


# instance fields
.field final fulltext:Z

.field final length:J

.field final unique:Z

.field final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/orm/Index;)V
    .locals 2
    .param p1, "index"    # Lcom/vkcoffee/android/orm/Index;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/Index;->value()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/orm/Index$MetaData;->value:Ljava/lang/String;

    .line 40
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/Index;->unique()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/orm/Index$MetaData;->unique:Z

    .line 41
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/Index;->fulltext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/orm/Index$MetaData;->fulltext:Z

    .line 42
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/Index;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/orm/Index$MetaData;->length:J

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZJZ)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "unique"    # Z
    .param p3, "length"    # J
    .param p5, "fulltext"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/vkcoffee/android/orm/Index$MetaData;->value:Ljava/lang/String;

    .line 33
    iput-boolean p2, p0, Lcom/vkcoffee/android/orm/Index$MetaData;->unique:Z

    .line 34
    iput-wide p3, p0, Lcom/vkcoffee/android/orm/Index$MetaData;->length:J

    .line 35
    iput-boolean p5, p0, Lcom/vkcoffee/android/orm/Index$MetaData;->fulltext:Z

    .line 36
    return-void
.end method
