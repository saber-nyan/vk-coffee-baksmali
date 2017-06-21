.class public interface abstract Lru/mail/android/mytracker/models/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# virtual methods
.method public abstract getId()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOldValue()Ljava/lang/String;
.end method

.method public abstract getParams()Ljava/lang/String;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getTimestampStart()J
.end method

.method public abstract getTimestamps()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimestampsSkipped()J
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract setId(J)V
.end method

.method public abstract setTimestampEnd(J)V
.end method

.method public abstract setTimestampStart(J)V
.end method

.method public abstract toJSON()Lorg/json/JSONObject;
.end method
