.class public Lcom/hackathon/walktalk/rooter;
.super Ljava/lang/Object;
.source "rooter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "getprop "

    .line 63
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 64
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private isEmulatorProperty(Ljava/lang/String;)Z
    .locals 6

    const/16 v0, 0x9

    .line 73
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "generic"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "unknown"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "goldfish"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "ranchu"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string v5, "google_sdk"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-string v5, "sdk"

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string v5, "emulator"

    aput-object v5, v1, v2

    const/4 v2, 0x7

    const-string v5, "Android SDK built for x86"

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const-string v5, "Genymotion"

    aput-object v5, v1, v2

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_1

    .line 78
    aget-object v5, v1, v2

    .line 79
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method


# virtual methods
.method public isRootedOrEmulated()Z
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x10

    .line 11
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "/system/bin/su"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "/system/xbin/su"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "/system/app/Superuser.apk"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "/sbin/su"

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "/su/bin/su"

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-string v3, "/system/bin/magisk"

    const/4 v9, 0x5

    aput-object v3, v2, v9

    const-string v3, "/system/xbin/magisk"

    const/4 v10, 0x6

    aput-object v3, v2, v10

    const-string v3, "/system/app/MagiskManager/MagiskManager.apk"

    const/4 v11, 0x7

    aput-object v3, v2, v11

    const-string v3, "/data/local/bin/su"

    const/16 v12, 0x8

    aput-object v3, v2, v12

    const-string v3, "/data/local/su"

    const/16 v13, 0x9

    aput-object v3, v2, v13

    const-string v3, "/data/local/xbin/su"

    const/16 v14, 0xa

    aput-object v3, v2, v14

    const-string v3, "/system/sd/xbin/su"

    const/16 v15, 0xb

    aput-object v3, v2, v15

    const-string v3, "/system/etc/init.d/99SuperSUDaemon"

    const/16 v15, 0xc

    aput-object v3, v2, v15

    const/16 v3, 0xd

    const-string v16, "/system/bin/.ext/.su"

    aput-object v16, v2, v3

    const/16 v3, 0xe

    const-string v16, "/system/usr/we-need-root/su-backup"

    aput-object v16, v2, v3

    const/16 v3, 0xf

    const-string v16, "/system/xbin/mu"

    aput-object v16, v2, v3

    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_1

    .line 20
    aget-object v1, v2, v3

    .line 21
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x10

    const/16 v14, 0xa

    goto :goto_0

    .line 28
    :cond_1
    new-array v1, v15, [Ljava/lang/String;

    const-string v2, "/dev/qemu_pipe"

    aput-object v2, v1, v4

    const-string v2, "/dev/qemu_trace"

    aput-object v2, v1, v5

    const-string v2, "/dev/socket/qemud"

    aput-object v2, v1, v6

    const-string v2, "/dev/qemu/hw.ini"

    aput-object v2, v1, v7

    const-string v2, "/sys/qemu_trace"

    aput-object v2, v1, v8

    const-string v2, "/system/lib/libc_malloc_debug_qemu.so"

    aput-object v2, v1, v9

    const-string v2, "/system/lib64/libc_malloc_debug_qemu.so"

    aput-object v2, v1, v10

    const-string v2, "/system/bin/qemu_props"

    aput-object v2, v1, v11

    const-string v2, "/sys/class/thermal/thermal_zone0"

    aput-object v2, v1, v12

    const-string v2, "/system/lib/libdvm.so"

    aput-object v2, v1, v13

    const-string v2, "/sys/class/net/wlan0"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string v2, "/sys/class/net/eth0"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    move v2, v4

    :goto_1
    if-ge v2, v15, :cond_3

    .line 36
    aget-object v3, v1, v2

    .line 37
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 44
    :cond_3
    new-array v1, v13, [Ljava/lang/String;

    const-string v2, "ro.kernel.qemu"

    aput-object v2, v1, v4

    const-string v2, "ro.bootloader"

    aput-object v2, v1, v5

    const-string v2, "ro.hardware"

    aput-object v2, v1, v6

    const-string v2, "ro.product.device"

    aput-object v2, v1, v7

    const-string v2, "ro.product.model"

    aput-object v2, v1, v8

    const-string v2, "ro.product.brand"

    aput-object v2, v1, v9

    const-string v2, "ro.product.manufacturer"

    aput-object v2, v1, v10

    const-string v2, "ro.build.fingerprint"

    aput-object v2, v1, v11

    const-string v2, "ro.build.product"

    aput-object v2, v1, v12

    move v2, v4

    :goto_2
    if-ge v2, v13, :cond_5

    .line 50
    aget-object v3, v1, v2

    .line 51
    invoke-direct {v0, v3}, Lcom/hackathon/walktalk/rooter;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 52
    invoke-direct {v0, v3}, Lcom/hackathon/walktalk/rooter;->isEmulatorProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return v4
.end method
