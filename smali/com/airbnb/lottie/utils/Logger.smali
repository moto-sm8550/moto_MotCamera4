.class public final Lcom/airbnb/lottie/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static INSTANCE:Lcom/airbnb/lottie/utils/LogcatLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/utils/LogcatLogger;

    invoke-direct {v0}, Lcom/airbnb/lottie/utils/LogcatLogger;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/utils/LogcatLogger;

    return-void
.end method

.method public static debug()V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/utils/LogcatLogger;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/utils/LogcatLogger;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p0, v1}, Lcom/airbnb/lottie/utils/LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/utils/LogcatLogger;

    invoke-virtual {v0, p0, p1}, Lcom/airbnb/lottie/utils/LogcatLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
