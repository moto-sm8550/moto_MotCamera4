.class public final Landroidx/work/Logger$LogcatLogger;
.super Landroidx/work/Logger;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogcatLogger"
.end annotation


# instance fields
.field public mLoggingLevel:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loggingLevel"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/work/Logger;-><init>()V

    .line 2
    iput p1, p0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    return-void
.end method


# virtual methods
.method public final varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwables"
        }
    .end annotation

    .line 1
    iget p0, p0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v0, 0x3

    if-gt p0, v0, :cond_1

    .line 2
    array-length p0, p3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    .line 3
    aget-object p0, p3, p0

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final varargs error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwables"
        }
    .end annotation

    .line 1
    iget p0, p0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v0, 0x6

    if-gt p0, v0, :cond_1

    .line 2
    array-length p0, p3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    .line 3
    aget-object p0, p3, p0

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final varargs info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwables"
        }
    .end annotation

    .line 1
    iget p0, p0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v0, 0x4

    if-gt p0, v0, :cond_1

    .line 2
    array-length p0, p3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    .line 3
    aget-object p0, p3, p0

    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final varargs warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwables"
        }
    .end annotation

    .line 1
    iget p0, p0, Landroidx/work/Logger$LogcatLogger;->mLoggingLevel:I

    const/4 v0, 0x5

    if-gt p0, v0, :cond_1

    .line 2
    array-length p0, p3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    .line 3
    aget-object p0, p3, p0

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
