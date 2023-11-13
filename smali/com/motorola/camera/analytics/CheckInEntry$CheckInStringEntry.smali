.class public final Lcom/motorola/camera/analytics/CheckInEntry$CheckInStringEntry;
.super Lcom/motorola/camera/analytics/CheckInEntry;
.source "CheckInEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/analytics/CheckInEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckInStringEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/analytics/CheckInEntry<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/analytics/CheckInEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/motorola/camera/analytics/CheckInEntry;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/analytics/CheckInEntry;->compareTo(Lcom/motorola/camera/analytics/CheckInEntry;)I

    move-result p0

    return p0
.end method

.method public final setValue(Lcom/motorola/camera/analytics/CheckinEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/camera/analytics/UnsupportedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/analytics/CheckInEntry;->mKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/motorola/camera/analytics/CheckInEntry;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    .line 2
    sget-boolean v1, Lcom/motorola/camera/analytics/CheckinEvent;->sOk:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/analytics/CheckinEvent;->mInstance:Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    sget-object v1, Lcom/motorola/camera/analytics/CheckinEvent;->sSetValueStringMtd:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 5
    :catch_0
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    .line 6
    :catch_1
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Lcom/motorola/camera/analytics/UnsupportedException;

    invoke-direct {p0}, Lcom/motorola/camera/analytics/UnsupportedException;-><init>()V

    throw p0
.end method
