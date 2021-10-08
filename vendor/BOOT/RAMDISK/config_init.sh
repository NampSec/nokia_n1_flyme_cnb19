# Get selected software configuration

config=`getprop ro.swconf.forced`
if [ -z "$config" ]; then
    config=`cat /config/local_config`
fi

if [ -z "$config" ]; then
    log -p e -t config_init "Could not find config : exit"
    exit
fi

mount -o bind /system/etc/catalog/$config /local_cfg
log -p i -t config_init "Activating configuration $config"
# Set properties for the selected configuration

# read all FeatureTeam's init.props file
for f in /local_cfg/*/init.props
do
    while read l; do

        # Ignore empty lines and comments
        case "$l" in
            ''|'#'*)
                continue
                ;;
        esac

        # Set property
        setprop `echo ${l/=/ }`

    done < $f
done
