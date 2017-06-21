.class public abstract Lru/mail/android/mytracker/models/events/AbstractEvent;
.super Ljava/lang/Object;
.source "AbstractEvent.java"

# interfaces
.implements Lru/mail/android/mytracker/models/events/Event;


# instance fields
.field private id:J

.field private name:Ljava/lang/String;

.field private oldValue:Ljava/lang/String;

.field private params:Ljava/lang/String;

.field private timestampEnd:J

.field private timestampStart:J

.field private timestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private timestampsSkipped:J

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lru/mail/android/mytracker/models/events/AbstractEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v2, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->id:J

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->name:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->value:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->oldValue:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->params:Ljava/lang/String;

    .line 31
    iput-wide v2, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->timestampsSkipped:J

    .line 32
    iput-wide v2, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->timestampStart:J

    .line 33
    iput-wide v2, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->timestampEnd:J

    .line 148
    iput-object p1, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->type:Ljava/lang/String;

    .line 149
    if-nez p2, :cond_0

    .line 151
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .restart local p2    # "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    iput-object p2, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->timestamps:Ljava/util/List;

    .line 155
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOldValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->oldValue:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->params:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->timestamps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->timestamps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->timestamps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 95
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getTimestampEnd()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->timestampEnd:J

    return-wide v0
.end method

.method public getTimestampStart()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->timestampStart:J

    return-wide v0
.end method

.method public getTimestamps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->timestamps:Ljava/util/List;

    return-object v0
.end method

.method public getTimestampsSkipped()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->timestampsSkipped:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 135
    iput-wide p1, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->id:J

    .line 136
    return-void
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->name:Ljava/lang/String;

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iput-object p1, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method protected setOldValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "oldValue"    # Ljava/lang/String;

    .prologue
    .line 72
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->oldValue:Ljava/lang/String;

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-object p1, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->oldValue:Ljava/lang/String;

    goto :goto_0
.end method

.method protected setParams(Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 83
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->params:Ljava/lang/String;

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iput-object p1, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->params:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTimestampEnd(J)V
    .locals 1
    .param p1, "timestampEnd"    # J

    .prologue
    .line 125
    iput-wide p1, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->timestampEnd:J

    .line 126
    return-void
.end method

.method public setTimestampStart(J)V
    .locals 1
    .param p1, "timestampStart"    # J

    .prologue
    .line 115
    iput-wide p1, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->timestampStart:J

    .line 116
    return-void
.end method

.method protected setTimestampsSkipped(J)V
    .locals 1
    .param p1, "timestampsSkipped"    # J

    .prologue
    .line 105
    iput-wide p1, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->timestampsSkipped:J

    .line 106
    return-void
.end method

.method protected setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->value:Ljava/lang/String;

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lru/mail/android/mytracker/models/events/AbstractEvent;->value:Ljava/lang/String;

    goto :goto_0
.end method
