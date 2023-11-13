.class public abstract Lcom/motorola/camera/analytics/CheckInEntry;
.super Ljava/lang/Object;
.source "CheckInEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/analytics/CheckInEntry$CheckInBoolEntry;,
        Lcom/motorola/camera/analytics/CheckInEntry$CheckInIntEntry;,
        Lcom/motorola/camera/analytics/CheckInEntry$CheckInDoubleEntry;,
        Lcom/motorola/camera/analytics/CheckInEntry$CheckInListEntry;,
        Lcom/motorola/camera/analytics/CheckInEntry$CheckInLongEntry;,
        Lcom/motorola/camera/analytics/CheckInEntry$CheckInStringEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/motorola/camera/analytics/CheckInEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public mKey:Ljava/lang/String;

.field public mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/analytics/CheckInEntry;->mKey:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/analytics/CheckInEntry;->mValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/motorola/camera/analytics/CheckInEntry;)I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/analytics/CheckInEntry;->mKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/analytics/CheckInEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/analytics/CheckInEntry;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/CheckInEntry;->compareTo(Lcom/motorola/camera/analytics/CheckInEntry;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Lcom/motorola/camera/analytics/CheckInEntry;

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/analytics/CheckInEntry;->mKey:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/motorola/camera/analytics/CheckInEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/motorola/camera/analytics/CheckInEntry;->mKey:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 4
    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/analytics/CheckInEntry;->mValue:Ljava/lang/Object;

    if-eqz p0, :cond_4

    iget-object p1, p1, Lcom/motorola/camera/analytics/CheckInEntry;->mValue:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    iget-object p0, p1, Lcom/motorola/camera/analytics/CheckInEntry;->mValue:Ljava/lang/Object;

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/analytics/CheckInEntry;->mKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/analytics/CheckInEntry;->mValue:Ljava/lang/Object;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public abstract setValue(Lcom/motorola/camera/analytics/CheckinEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/camera/analytics/UnsupportedException;
        }
    .end annotation
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CheckInEntry[Key:"

    .line 1
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/analytics/CheckInEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/analytics/CheckInEntry;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/analytics/CheckInEntry;->mValue:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
