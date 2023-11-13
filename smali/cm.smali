.class public Lcm;
.super Ljava/io/IOException;
.source "PG"


# static fields
.field public static final serialVersionUID:J = -0x166db9773d0dffacL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "description"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcm;
    .locals 2

    new-instance v0, Lcm;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcm;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Lcm;
    .locals 2

    new-instance v0, Lcm;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcm;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Lcm;
    .locals 2

    new-instance v0, Lcm;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcm;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d()Lcl;
    .locals 2

    new-instance v0, Lcl;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static e()Lcm;
    .locals 2

    new-instance v0, Lcm;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lcm;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static f()Lcm;
    .locals 2

    new-instance v0, Lcm;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcm;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
